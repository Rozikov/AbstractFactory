unit Unit1;

interface

type
  ProductA1 = class;
  ProductB1 = class;

  AbstractFactory = class
  public
    function PrintProductA: string; virtual; abstract;
    function PrintProductB: string; virtual; abstract;
  end;

  ConcreteFactory1 = class(AbstractFactory)
  private
    fProductA1: ProductA1;
    fProductB1: ProductB1;
  public
    function PrintProductA: string; override;
    function PrintProductB: string; override;
  end;

  ConcreteFactory2 = class(AbstractFactory)
  private
    fProductA1: ProductA1;
    fProductB1: ProductB1;
  public
    function PrintProductA: string; override;
    function PrintProductB: string; override;
  end;

  AbctractProductA = class
  public
    function print: string; virtual; abstract;
  end;

  ProductA1 = class(AbctractProductA)
    function print: string; override;
  end;

  ProductA2 = class(AbctractProductA)
    function print: string; override;
  end;

  AbctractProductB = class
  public
    function print: string; virtual; abstract;
  end;

  ProductB1 = class(AbctractProductB)
    function print: string; override;
  end;

  ProductB2 = class(AbctractProductB)
    function print: string; override;
  end;

implementation

{ ProductB1 }

function ProductB1.print: string;
begin
  result := 'ProductB1.pirnt';
end;

{ ProductB2 }

function ProductB2.print: string;
begin
  result := 'ProductB2.pirnt';
end;

{ ProductA1 }

function ProductA1.print: string;
begin
  result := 'ProductA1.pirnt';
end;

{ ProductA2 }

function ProductA2.print: string;
begin
  result := 'ProductA2.pirnt';
end;

{ ConcreteFactory1 }

function ConcreteFactory1.PrintProductA: string;
begin
  fProductA1 := ProductA1.Create;
  result := fProductA1.print;
end;

function ConcreteFactory1.PrintProductB: string;
begin
  ProductB1 := ProductB1.Create;
  result := fProductB1.print;
end;

{ ConcreteFactory2 }

function ConcreteFactory2.PrintProductA: string;
begin
  fProductA1 := ProductA1.Create;
  result := fProductA1.print;
end;

function ConcreteFactory2.PrintProductB: string;
begin
  fProductA1 := ProductA1.Create;
  result := fProductA1.print;
end;

end.
