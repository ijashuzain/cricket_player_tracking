import 'dart:io';
import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:cricket_player_tracking/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:cricket_player_tracking/presentation/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AddEditPlayerView extends StatefulWidget {
  final Player? player;

  const AddEditPlayerView({
    Key? key,
    this.player,
  }) : super(key: key);

  @override
  State<AddEditPlayerView> createState() => _AddEditPlayerViewState();
}

class _AddEditPlayerViewState extends State<AddEditPlayerView> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _ageController;
  late final TextEditingController _specializationController;

  File? _profileImage;
  bool _isSubmitting = false;

  final List<String> _specializations = [
    'Batsman',
    'Bowler',
    'All-rounder',
    'Wicket-keeper',
  ];

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.player?.name ?? '');
    _ageController = TextEditingController(text: widget.player?.age.toString() ?? '');
    _specializationController = TextEditingController(text: widget.player?.specialization ?? '');
  }

  Future<void> _pickImage() async {
    try {
      final imagePicker = ImagePicker();
      final pickedImage = await imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1200,
        maxHeight: 1200,
        imageQuality: 85,
      );

      if (pickedImage != null) {
        setState(() {
          _profileImage = File(pickedImage.path);
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error picking image: ${e.toString()}'),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
    }
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isSubmitting = true;
    });

    try {
      final player = Player(
        id: widget.player?.id ?? DateTime.now().millisecondsSinceEpoch.toString(),
        name: _nameController.text.trim(),
        age: int.parse(_ageController.text.trim()),
        specialization: _specializationController.text.trim(),
        profileImageUrl: widget.player?.profileImageUrl,
        performanceRecords: widget.player?.performanceRecords ?? [],
      );

      if (widget.player == null) {
        context.read<PlayerBloc>().add(
              PlayerEvent.createPlayer(
                player: player,
                profileImage: _profileImage,
              ),
            );
      } else {
        context.read<PlayerBloc>().add(
              PlayerEvent.updatePlayer(
                player: player,
                profileImage: _profileImage,
              ),
            );
      }

      Navigator.pop(context);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error saving player: ${e.toString()}'),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
    } finally {
      setState(() {
        _isSubmitting = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.player == null ? 'Add Player' : 'Edit Player'),
      ),
      body: BlocListener<PlayerBloc, PlayerState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message, _) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Theme.of(context).colorScheme.error,
                ),
              );
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildProfileImageSection(),
                const SizedBox(height: 24),
                _buildPlayerForm(),
                const SizedBox(height: 24),
                FilledButton.icon(
                  onPressed: _isSubmitting ? null : _submitForm,
                  icon: _isSubmitting
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Icon(Icons.save),
                  label: Text(
                    _isSubmitting ? 'Saving...' : (widget.player == null ? 'Add Player' : 'Update Player'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImageSection() {
    return Card(
      child: InkWell(
        onTap: _pickImage,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          child: _buildProfileImageContent(),
        ),
      ),
    );
  }

  Widget _buildProfileImageContent() {
    if (_profileImage != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.file(
          _profileImage!,
          fit: BoxFit.cover,
        ),
      );
    } else if (widget.player?.profileImageUrl != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          imageUrl: widget.player!.profileImageUrl!,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Center(
            child: Icon(Icons.error),
          ),
        ),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add_a_photo_outlined,
            size: 48,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 8),
          Text(
            'Add Profile Picture',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      );
    }
  }

  Widget _buildPlayerForm() {
    return Column(
      children: [
        CustomFormField(
          controller: _nameController,
          label: 'Player Name',
          prefixIcon: Icons.person,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter player name';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),

        CustomFormField(
          controller: _ageController,
          label: 'Age',
          prefixIcon: Icons.calendar_today,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter age';
            }
            final age = int.tryParse(value);
            if (age == null || age < 0 || age > 100) {
              return 'Please enter a valid age';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),

        DropdownButtonFormField<String>(
          value: _specializationController.text.isEmpty ? null : _specializationController.text,
          decoration: InputDecoration(
            labelText: 'Specialization',
            prefixIcon: const Icon(Icons.sports_cricket),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          items: _specializations.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              _specializationController.text = newValue;
            }
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please select a specialization';
            }
            return null;
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _specializationController.dispose();
    super.dispose();
  }
}
