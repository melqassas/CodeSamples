namespace SharePoint_Edition_Detection
{
    partial class PS2016_Edition
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(PS2016_Edition));
            this.lbl_welcometext = new System.Windows.Forms.Label();
            this.prgbar_prerequisites = new System.Windows.Forms.ProgressBar();
            this.timerprgbar_prerequisites = new System.Windows.Forms.Timer(this.components);
            this.lbl_result = new System.Windows.Forms.Label();
            this.lbl_SPEdition = new System.Windows.Forms.Label();
            this.btn_check = new System.Windows.Forms.PictureBox();
            this.btn_help = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.btn_check)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btn_help)).BeginInit();
            this.SuspendLayout();
            // 
            // lbl_welcometext
            // 
            this.lbl_welcometext.AutoSize = true;
            this.lbl_welcometext.Font = new System.Drawing.Font("Calibri", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_welcometext.ForeColor = System.Drawing.Color.White;
            this.lbl_welcometext.Location = new System.Drawing.Point(5, 5);
            this.lbl_welcometext.Name = "lbl_welcometext";
            this.lbl_welcometext.Size = new System.Drawing.Size(428, 29);
            this.lbl_welcometext.TabIndex = 0;
            this.lbl_welcometext.Text = "Detect SharePoint Edition / Build Number";
            // 
            // prgbar_prerequisites
            // 
            this.prgbar_prerequisites.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.prgbar_prerequisites.Location = new System.Drawing.Point(1, 171);
            this.prgbar_prerequisites.Name = "prgbar_prerequisites";
            this.prgbar_prerequisites.Size = new System.Drawing.Size(462, 17);
            this.prgbar_prerequisites.TabIndex = 4;
            // 
            // timerprgbar_prerequisites
            // 
            this.timerprgbar_prerequisites.Tick += new System.EventHandler(this.timerprgbar_prerequisites_Tick);
            // 
            // lbl_result
            // 
            this.lbl_result.AutoSize = true;
            this.lbl_result.Font = new System.Drawing.Font("Calibri", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_result.ForeColor = System.Drawing.Color.White;
            this.lbl_result.Location = new System.Drawing.Point(5, 189);
            this.lbl_result.Name = "lbl_result";
            this.lbl_result.Size = new System.Drawing.Size(16, 14);
            this.lbl_result.TabIndex = 8;
            this.lbl_result.Text = "...";
            // 
            // lbl_SPEdition
            // 
            this.lbl_SPEdition.AutoSize = true;
            this.lbl_SPEdition.Font = new System.Drawing.Font("Calibri", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_SPEdition.ForeColor = System.Drawing.Color.White;
            this.lbl_SPEdition.Location = new System.Drawing.Point(336, 278);
            this.lbl_SPEdition.Name = "lbl_SPEdition";
            this.lbl_SPEdition.Size = new System.Drawing.Size(97, 14);
            this.lbl_SPEdition.TabIndex = 9;
            this.lbl_SPEdition.Text = "SharePoint Edition";
            // 
            // btn_check
            // 
            this.btn_check.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_check.Image = global::SharePoint_Edition_Detection.Properties.Resources.process_accept_icon;
            this.btn_check.Location = new System.Drawing.Point(164, 37);
            this.btn_check.Name = "btn_check";
            this.btn_check.Size = new System.Drawing.Size(128, 128);
            this.btn_check.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.btn_check.TabIndex = 10;
            this.btn_check.TabStop = false;
            this.btn_check.Click += new System.EventHandler(this.btn_check_Click);
            // 
            // btn_help
            // 
            this.btn_help.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_help.Image = global::SharePoint_Edition_Detection.Properties.Resources.Categories_system_help_icon1;
            this.btn_help.Location = new System.Drawing.Point(439, 5);
            this.btn_help.Name = "btn_help";
            this.btn_help.Size = new System.Drawing.Size(24, 24);
            this.btn_help.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.btn_help.TabIndex = 5;
            this.btn_help.TabStop = false;
            this.btn_help.Click += new System.EventHandler(this.btn_help_Click);
            // 
            // PS2016_Edition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DodgerBlue;
            this.ClientSize = new System.Drawing.Size(465, 208);
            this.Controls.Add(this.prgbar_prerequisites);
            this.Controls.Add(this.btn_check);
            this.Controls.Add(this.btn_help);
            this.Controls.Add(this.lbl_welcometext);
            this.Controls.Add(this.lbl_result);
            this.Controls.Add(this.lbl_SPEdition);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "PS2016_Edition";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SharePoint 2016 Edition Detection";
            this.Load += new System.EventHandler(this.PS2016_Home_Load);
            ((System.ComponentModel.ISupportInitialize)(this.btn_check)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btn_help)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbl_welcometext;
        private System.Windows.Forms.ProgressBar prgbar_prerequisites;
        private System.Windows.Forms.PictureBox btn_help;
        private System.Windows.Forms.Timer timerprgbar_prerequisites;
        private System.Windows.Forms.Label lbl_result;
        private System.Windows.Forms.PictureBox btn_check;
        private System.Windows.Forms.Label lbl_SPEdition;

    }
}

