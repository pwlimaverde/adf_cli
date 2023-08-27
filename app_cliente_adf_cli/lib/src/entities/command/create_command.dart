import 'package:args/command_runner.dart';

final class CreateCommand extends Command {
  final String _nameCommand;
  final String _descriptionCommand;
  final List<Command> _commands;
  final Function? _runCommand;

  CreateCommand(
      {required  nameCommand, required String descriptionCommand, Function? runCommand, List<Command>? commands})
      : _nameCommand = nameCommand,
        _descriptionCommand = descriptionCommand,
        _commands = commands ?? [],
        _runCommand = runCommand {
    if (_commands.isNotEmpty) {
      for (Command command in _commands) {
        addSubcommand(command);
      }
    }
  }

  @override
  String get description => _descriptionCommand;

  @override
  String get name => _nameCommand;

  @override
  void run() {
    if (_runCommand != null) {
      _runCommand!();
      return;
    } else {
      return;
    }
  }
}
