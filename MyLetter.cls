\ProvidesClass{MyLetter}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions\relax 
\LoadClass{letter}

