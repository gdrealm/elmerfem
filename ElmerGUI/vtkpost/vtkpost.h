/*****************************************************************************
 *                                                                           *
 *  Elmer, A Finite Element Software for Multiphysical Problems              *
 *                                                                           *
 *  Copyright 1st April 1995 - , CSC - Scientific Computing Ltd., Finland    *
 *                                                                           *
 *  This program is free software; you can redistribute it and/or            *
 *  modify it under the terms of the GNU General Public License              *
 *  as published by the Free Software Foundation; either version 2           *
 *  of the License, or (at your option) any later version.                   *
 *                                                                           *
 *  This program is distributed in the hope that it will be useful,          *
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of           *
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            *
 *  GNU General Public License for more details.                             *
 *                                                                           *
 *  You should have received a copy of the GNU General Public License        *
 *  along with this program (in file fem/GPL-2); if not, write to the        *
 *  Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,         *
 *  Boston, MA 02110-1301, USA.                                              *
 *                                                                           *
 *****************************************************************************/

/*****************************************************************************
 *                                                                           *
 *  ElmerGUI vtkpost                                                         *
 *                                                                           *
 *****************************************************************************
 *                                                                           *
 *  Authors: Mikko Lyly, Juha Ruokolainen and Peter Råback                   *
 *  Email:   Juha.Ruokolainen@csc.fi                                         *
 *  Web:     http://www.csc.fi/elmer                                         *
 *  Address: CSC - Scientific Computing Ltd.                                 *
 *           Keilaranta 14                                                   *
 *           02101 Espoo, Finland                                            *
 *                                                                           *
 *  Original Date: 15 Mar 2008                                               *
 *                                                                           *
 *****************************************************************************/

#ifndef VTKPOST_H
#define VTKPOST_H

#include <QMainWindow>
#include "QVTKWidget.h"
#include "src/meshtype.h"

class vtkRenderer;

// EpNode:
//========
class EpNode
{
 public:
  EpNode();
  ~EpNode();

  double x[3];
};

// EpElement:
//===========
class EpElement
{
 public:
  EpElement();
  ~EpElement();

  QString groupName;
  int code;
  int indexes;
  int *index;
};

// EpMesh:
//=========
class EpMesh
{
 public:
  EpMesh();
  ~EpMesh();

  int epNodes;
  EpNode *epNode;

  int epElements;
  EpElement *epElement;
};

// ScalarField:
//=============
class ScalarField
{
 public:
  ScalarField();
  ~ScalarField();

  QAction *menuAction;
  QString name;
  int values;
  double *value;
  double minVal;
  double maxVal;
};

// VtkPost:
//==========
class VtkPost : public QMainWindow
{
  Q_OBJECT

public:
  VtkPost(QWidget *parent = 0);
  ~VtkPost();

  QSize minimumSizeHint() const;
  QSize sizeHint() const;

  void setPostFileName(QString);
  bool readPostFile();

signals:

private slots:
  void exitSlot();
  void drawScalarSlot(QAction*);

private:
  QMenu *fileMenu;
  QMenu *viewMenu;
  QMenu *viewScalarMenu;

  QAction *exitAct;

  void createActions();
  void createMenus();
  void createToolbars();
  void createStatusBar();

  EpMesh *epMesh;

  QString postFileName;
  int scalarFields;
  ScalarField *scalarField;

  QVTKWidget *qvtkWidget;
  vtkRenderer *scalarRenderer;
};

#endif // VTKPOST_H
