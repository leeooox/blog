第一篇gitpages blog
#######################

:tags: misc
:category: misc
:slug: my-fist-post
:summary: Short version for index and feeds
:comment_id: my-fist-post

开篇第一个文章

采用pelican写作，发布在gitpage上。


测试一下公式
=============
用的是render_math插件::

    The area of a circle is :math:`A_\text{c} = (\pi/4) d^2`.

    .. math::

      α_t(i) = P(O_1, O_2, … O_t, q_t = S_i λ)


The area of a circle is :math:`A_\text{c} = (\pi/4) d^2`.

.. math::

  α_t(i) = P(O_1, O_2, … O_t, q_t = S_i λ)


测试代码
===========

使用code-block指令
-------------------------

.. code-block:: verilog
    :linenos: table

    assign cDVE[0] = ((status==S10) && (E4[3]==1'b0) && (E4[2]==1'b1))? 1'b1:1'b0;
    assign cDVE[1] = ((status==S00) && (E4[3]==1'b0) && (E4[0]==1'b1))? 1'b1:1'b0;
    assign cDV[0] = ~DVE[1];//~(DVE[0]^DVE[1]);
    assign cDV[1] = DVE[0];
    // end of combine logic 

    assign data_valid = DV;

    always @(posedge clk_in) begin
      DVE <= cDVE;
      DV <= cDV;
    end



使用include指令,高亮显示不是很好
------------------------------------


.. include:: code/blinky.v
    :code: verilog
    :number-lines:

使用code_include插件，没办法使能行号
---------------------------------------

.. code-include:: code/blinky.v
    :lexer: verilog
    :encoding: utf-8
    :tab-width: 4



csv表格测试
==============

直接写在正文的方法
----------------------

.. csv-table:: 直接写在正文的方法
    :header: "Treat", "Quantity", "Description"
    :widths: 15, 10, 30
 
    "Albatross", 2.99, "On a stick!"
    "Crunchy Frog", 1.49, "If we took the bones out, it wouldn't be
    crunchy, now would it?"
    "Gannet Ripple", 1.99, "On a stick!"


换一种直接指定csv文件的方法，可以用excel编辑csv文件。
--------------------------------------------------------

.. csv-table:: 指定csv文件的方法
    :header-rows: 1
    :file: code/A_test_table.csv
    

使用wavedrom增加时序图
==============================

.. raw:: html

    <script type="WaveDrom">
    { signal : [
      { name: "clk",  wave: "p......" },
      { name: "bus",  wave: "x.34.5x",   data: "head body tail" },
      { name: "wire", wave: "0.1..0." },
    ]}
    </script>