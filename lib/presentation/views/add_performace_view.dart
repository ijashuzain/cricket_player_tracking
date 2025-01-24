import 'dart:io';
import 'package:cricket_player_tracking/presentation/bloc/performance_bloc/performance_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../domain/entities/player.dart';
import '../widgets/custom_form_field.dart';

class AddPerformanceView extends StatefulWidget {
  final String playerId;

  const AddPerformanceView({
    Key? key,
    required this.playerId,
  }) : super(key: key);

  @override
  State<AddPerformanceView> createState() => _AddPerformanceViewState();
}

class _AddPerformanceViewState extends State<AddPerformanceView> {
  final _formKey = GlobalKey<FormState>();
  final _dailyScoreController = TextEditingController();
  final _matchDetailsController = TextEditingController();
  final _locationController = TextEditingController();
  final _wicketController = TextEditingController();

  File? _performanceImage;
  bool _isOffline = false;

  @override
  void initState() {
    super.initState();
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      _isOffline = connectivityResult == ConnectivityResult.none;
    });
  }

  Future<void> _pickImage() async {
    try {
      final imagePicker = ImagePicker();
      final pickedImage = await imagePicker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1200,
        maxHeight: 1200,
        imageQuality: 85,
      );

      if (pickedImage != null) {
        setState(() {
          _performanceImage = File(pickedImage.path);
        });
      }
    } catch (e) {
      _showErrorSnackBar('Error capturing image: ${e.toString()}');
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
    );
  }

  Future<void> _submitPerformance() async {
    if (!_formKey.currentState!.validate()) return;

    try {
      final performanceRecord = PerformanceRecord(
        date: DateTime.now(),
        runs: int.tryParse(_dailyScoreController.text) ?? 0,
        wickets: _wicketController.text.isNotEmpty ? int.parse(_wicketController.text) : 0,
        matchDetails: _matchDetailsController.text,
        location: _locationController.text,
      );

      context.read<PerformanceBloc>().add(
            PerformanceEvent.addPerformance(
              playerId: widget.playerId,
              record: performanceRecord,
              performanceImage: _performanceImage,
            ),
          );
    } catch (e) {
      _showErrorSnackBar('Error adding performance: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PerformanceBloc, PerformanceState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (player, isOffline) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  isOffline ? 'Performance saved offline. Will sync when online.' : 'Performance added successfully!',
                ),
                backgroundColor: isOffline ? Colors.orange : Colors.green,
              ),
            );
            Navigator.pop(context);
          },
          error: (message, isOffline) {
            _showErrorSnackBar(message);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add Performance'),
            actions: [
              if (_isOffline)
                const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.signal_wifi_off, color: Colors.orange),
                ),
            ],
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildImageSection(),
                      const SizedBox(height: 24),
                      _buildPerformanceForm(),
                      const SizedBox(height: 24),
                      FilledButton.icon(
                        onPressed: state.maybeWhen(
                          adding: () => null,
                          orElse: () => _submitPerformance,
                        ),
                        icon: state.maybeWhen(
                          adding: () => const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          ),
                          orElse: () => const Icon(Icons.save),
                        ),
                        label: Text(
                          state.maybeWhen(
                            adding: () => 'Saving...',
                            orElse: () => 'Save Performance',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (state.maybeWhen(
                adding: () => true,
                orElse: () => false,
              ))
                const ModalBarrier(
                  dismissible: false,
                  color: Colors.black12,
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildImageSection() {
    return Card(
      child: InkWell(
        onTap: _pickImage,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Theme.of(context).colorScheme.outline,
              width: 1,
            ),
          ),
          child: _performanceImage != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.file(
                    _performanceImage!,
                    fit: BoxFit.cover,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 48,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Tap to capture performance image',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildPerformanceForm() {
    return Column(
      children: [
        CustomFormField(
          controller: _dailyScoreController,
          label: 'Daily Score',
          keyboardType: TextInputType.number,
          prefixIcon: Icons.score,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter daily score';
            }
            final score = double.tryParse(value);
            if (score == null || score < 0) {
              return 'Please enter a valid score';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        CustomFormField(
          controller: _wicketController,
          label: 'Wickets Taken',
          keyboardType: TextInputType.number,
          prefixIcon: Icons.sports_cricket,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter wickets taken';
            }
            final wickets = int.tryParse(value);
            if (wickets == null || wickets < 0) {
              return 'Please enter a valid number of wickets';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        CustomFormField(
          controller: _matchDetailsController,
          label: 'Match Details',
          maxLines: 3,
          prefixIcon: Icons.description,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter match details';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        CustomFormField(
          controller: _locationController,
          label: 'Match Location',
          prefixIcon: Icons.location_on,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter match location';
            }
            return null;
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _dailyScoreController.dispose();
    _matchDetailsController.dispose();
    _locationController.dispose();
    _wicketController.dispose();
    super.dispose();
  }
}
