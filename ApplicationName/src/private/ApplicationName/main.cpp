#include "pch.h"

#include <QApplication.h>
#include <QMainWindow.h>


class MainWindow : public QMainWindow
{
public:
	MainWindow(QWidget* parent = nullptr)
		: QMainWindow(parent)
	{
		setWindowTitle("Hello World");
	}
};

int main(int argc, char** argv)
{
	QApplication app(argc, argv);
	MainWindow window;
	window.show();
	return app.exec();
}
