<?php

namespace View\Html;

class Table extends AbstractTag
{
    protected $table;
    protected $data;


    public function __construct()
    {
        $this->clear();
    }

    public function clear(): self
    {
        $this->style = '';
        $this->data = '';
        return $this;
    }

    public function data(array $data): self
    {
        $str = "";

        foreach ($data as $row) {
            $str .= "\t<tr>\n";
            foreach ($row as $cell) {
                $str .= "\t\t<td>$cell</td>\n";
            }
            $str .= "\t</tr>\n";
        }

        $this->data = $str;
        return $this;
    }
    public function html()
    {
        return "<table$this->style$this->class>\n$this->data</table>\n";
    }
}
