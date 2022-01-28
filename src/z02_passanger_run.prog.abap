*&---------------------------------------------------------------------*
*& Report z02_passanger_run
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_passanger_run.
** Name, die ID und CityTo von Customer wird hier angegeben: Bsp.: Sophie Sudhoff/ San francisco/00002965
PARAMETERS PassID type s_customer.
PARAMETERS CusName TYPE s_passname.
PARAMETERS CityTo TYPE s_to_city.

**SELECT * from z02_passangers
**where z02_passangers~passangerid = passid into Table @DATA(PassangerTable).
** data: PassTable type table Z02_passangers.
**cl_demo_output=>display_data( Z02_Passangers ).
**PARAMETERS bookid type s_book_id.
**bookid =


** Entweder ID oder name UND cityTo
SELECT * FROM Z02_Passangers
 where Z02_Passangers~customid = @passid
 or ( Z02_Passangers~Passname = @cusname and Z02_Passangers~CityTo = @cityto )

into table @DATA(Table).

 cl_demo_output=>display_data( table ).
