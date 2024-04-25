using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using System.Windows.Forms;

namespace Chessbit
{
    class Controller {
    public static void DrawTiles(Form f)
    {
        int tileColor = 0;
        System.Drawing.SolidBrush myBrush = new System.Drawing.SolidBrush(Color.FromArgb(tileColor, tileColor, tileColor));
        System.Drawing.Graphics Tile = f.CreateGraphics();

        for (int i = 0; i < 8; i++)
        {
            for (int l = 0; l < 8; l++)
            {
                
                myBrush = new System.Drawing.SolidBrush(Color.FromArgb(tileColor, tileColor, tileColor));
                Tile.FillRectangle(myBrush, new Rectangle(i * 100, l * 100, 100, 100));
                //tileColor = tileColor-abs()
                if (tileColor == 255)
                {
                    tileColor = 0;
                }
                else
                {
                    tileColor = 255;
                }

            }
            if (tileColor == 255)
            {
                tileColor = 0;
            }
            else
            {
                tileColor = 255;
            }
        }
        myBrush.Dispose();
        Tile.Dispose();
    }
          public static void DrawPieces()
        {
            string fen = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"


        }
        public Bitmap CropImage(Bitmap source, Rectangle section)
        {
            var bitmap = new Bitmap(section.Width, section.Height);
            using (var g = Graphics.FromImage(bitmap))
            {
                g.DrawImage(source, 0, 0, section, GraphicsUnit.Pixel);
                return bitmap;
            }
        }

        // Example use:     
        Bitmap source = new Bitmap(@"C:\Users\brick\Pictures\Chess_Icons.png");
        Rectangle section = new Rectangle(new Point(12, 50), new Size(150, 150));

        Bitmap CroppedImage = CropImage(source, section);
    }
}
