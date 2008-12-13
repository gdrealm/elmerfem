egp.ReadPostFile("case.ep")
egp.SetSurfaces(1)
egp.SetIsoSurfaces(1)
egp.SetFeatureEdges(1)
preferences.SetFeatureAngle(45)
surfaces.SetFieldName("Null")
surfaces.SetOpacity(20)
isoSurfaces.SetFieldName("nodes_z")
isoSurfaces.SetColorName("Temperature")
isoSurfaces.SetContours(1)
isoSurfaces.KeepFieldLimits(1)
egp.SetOrientation(45, 45, 0)
egp.ResetCamera()
egp.Render()
var zmin = egp.GetMinZ()
var zmax = egp.GetMaxZ()
for(var i = 0; i < 100; i++)
{
   var z = zmin + i/100.0 * (zmax-zmin)
   isoSurfaces.SetMinFieldVal(z)
   isoSurfaces.SetMaxFieldVal(z)
   egp.Redraw()
}
