var tipuesearch = {"pages":[{"title":"第一篇gitpages blog","text":"开篇第一个文章 采用pelican写作，发布在gitpage上。 测试一下公式 用的是render_math插件: The area of a circle is :math:`A_\\text{c} = (\\pi/4) d&#94;2`. .. math:: α_t(i) = P(O_1, O_2, … O_t, q_t = S_i λ) The area of a circle is \\(A_\\text{c} = (\\pi/4) d&#94;2\\) . \\begin{equation*} \\alpha _t(i) = P(O_1, O_2, \\ldots O_t, q_t = S_i \\lambda ) \\end{equation*} 测试代码 使用code-block指令 1 2 3 4 5 6 7 8 9 10 11 12 assign cDVE [ 0 ] = (( status == S10 ) && ( E4 [ 3 ] == 1 'b0 ) && ( E4 [ 2 ] == 1 'b1 )) ? 1 'b1 : 1 'b0 ; assign cDVE [ 1 ] = (( status == S00 ) && ( E4 [ 3 ] == 1 'b0 ) && ( E4 [ 0 ] == 1 'b1 )) ? 1 'b1 : 1 'b0 ; assign cDV [ 0 ] = ~ DVE [ 1 ]; //~(DVE[0]&#94;DVE[1]); assign cDV [ 1 ] = DVE [ 0 ]; // end of combine logic assign data_valid = DV ; always @( posedge clk_in ) begin DVE <= cDVE ; DV <= cDV ; end 使用include指令,高亮显示不是很好 1 module top ( input clk , rst , output reg [ 7 : 0 ] leds ); 2 3 reg [ 7 : 0 ] ctr ; 4 always @( posedge clk ) 5 if ( rst ) 6 ctr <= 8'h00 ; 7 else 8 ctr <= ctr + 1 'b1 ; 9 10 assign leds = ctr ; 11 12 endmodule csv表格测试 直接写在正文的方法 直接写在正文的方法 Treat Quantity Description Albatross 2.99 On a stick! Crunchy Frog 1.49 If we took the bones out, it wouldn't be crunchy, now would it? Gannet Ripple 1.99 On a stick! 换一种直接指定csv文件的方法，可以用excel编辑csv文件。 指定csv文件的方法 Treat Quantity Description Albatross 2.99 On a stick! Crunchy Frog 1.49 If we took the bones out, it wouldn??t be crunchy, now would it? Gannet Ripple 1.99 On a stick!","tags":"misc","url":"https://blog.sipi.tech/my-fist-post.html","loc":"https://blog.sipi.tech/my-fist-post.html"}]};