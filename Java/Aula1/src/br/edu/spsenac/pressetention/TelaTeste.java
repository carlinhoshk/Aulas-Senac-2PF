package br.edu.spsenac.pressetention;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class TelaTeste {

	private JFrame frame;
	private JTextField txtTemperatura;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TelaTeste window = new TelaTeste();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public TelaTeste() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Temperatura");
		lblNewLabel.setBounds(50, 48, 62, 14);
		frame.getContentPane().add(lblNewLabel);
		
		txtTemperatura = new JTextField();
		txtTemperatura.setBounds(114, 45, 86, 20);
		frame.getContentPane().add(txtTemperatura);
		txtTemperatura.setColumns(10);
		
		JButton btnConverte = new JButton("Converter");
		btnConverte.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String nome = txtTemperatura.getText();
				
				JOptionPane.showMessageDialog(null, nome, "Tela Teste", JOptionPane.ERROR_MESSAGE);
				
			}
		});
		btnConverte.setBounds(202, 44, 89, 23);
		frame.getContentPane().add(btnConverte);
	}
}
