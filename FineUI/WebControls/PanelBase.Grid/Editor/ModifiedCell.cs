using System;
using System.Collections.Generic;
using System.Text;

namespace FineUI
{
    public class ModifiedCell
    {
        private int rowIndex;

        public int RowIndex
        {
            get { return rowIndex; }
            set { rowIndex = value; }
        }


        private int columnIndex;

        public int ColumnIndex
        {
            get { return columnIndex; }
            set { columnIndex = value; }
        }


        private object cellValue;

        public object CellValue
        {
            get { return cellValue; }
            set { cellValue = value; }
        }


    }
}
