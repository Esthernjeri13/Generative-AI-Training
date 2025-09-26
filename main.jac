"""Daily Motivation API"""

import "impl.jac";
import from byllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash", );

"""Generates a motivational quote"""
def motivate() -> str by llm();

architype actor Motivator {
    can inspire with `root entry;
}

with entry {
    root spawn Motivator();
}
