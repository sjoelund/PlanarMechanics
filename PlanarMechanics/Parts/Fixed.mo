within PlanarMechanics.Parts;
model Fixed
  "Frame fixed in the planar world frame at a given position and orientation"

  parameter SI.Position r[2] = {0,0} "Fixed x,y-position";
  parameter SI.Angle phi = 0 "Fixed angle";

  Interfaces.Frame_b frame
    annotation (Placement(transformation(extent={{-116,-16},{-84,16}})));
equation
  {frame.x,frame.y} = r;
  frame.phi = phi;
  annotation (Icon(graphics={
        Text(
          extent={{-150,-80},{150,-120}},
          fillPattern=FillPattern.Sphere,
          fillColor={85,170,255},
          textString="%name"),
        Line(
          points={{-100,0},{0,0}}),
        Line(
          points={{0,80},{0,-80}}),
        Line(
          points={{0,40},{80,0}}),
        Line(
          points={{0,80},{80,40}}),
        Line(
          points={{0,0},{80,-40}}),
        Line(
          points={{0,-40},{80,-80}})}),
    Documentation(revisions="<html><p><img src=\"modelica://PlanarMechanics/Resources/Images/dlr_logo.png\"/> <b>Developed 2010-2014 at the DLR Institute of System Dynamics and Control</b></p></html>",  info="<html>
<p>This component defines the x, y-position and angle of the frame connectors, to which this component is attached to.</p>
</html>"));
end Fixed;
