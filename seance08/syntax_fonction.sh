#!/bin/bash

# deux syntaxes !! 

foo(){
    echo $1 $2 $#
    #<instructions>
}

function bar {
    echo $1 $2 $#
    #<instructions>
    #<instructions>
    #<instructions>
}

foo param_foo param2_foo
bar param_bar param2_bar param3_bar
