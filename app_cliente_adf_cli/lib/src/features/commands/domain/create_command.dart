import 'package:args/command_runner.dart';

final class CreateCommand extends Command {
  final List<Command> _commands;
  final String _nameCommand;
  final String _descriptionCommand;
  final Function? _runCommand;

  CreateCommand(
      List<Command> commands, String nameCommand, String descriptionCommand,
      [Function? runCommand])
      : _commands = commands,
        _nameCommand = nameCommand,
        _descriptionCommand = descriptionCommand,
        _runCommand = runCommand {
    for (Command command in _commands) {
      addSubcommand(command);
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
