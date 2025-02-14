unit Modelo.Player;

interface

type
  IPlayer = Interface
  ['{A58DAEC8-C2AF-4C0E-92A1-F791DAA16D98}'] // GUID (identificador único)

    function Play: boolean;
    function Avancar: boolean;
    function Retroceder: boolean;
    function Stop: boolean;
    function Pause: boolean;
    function Localizar: integer;

  End;

implementation

end.

