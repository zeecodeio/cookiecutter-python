from behave import *

from {{cookiecutter.package_import_name}}.subsequence import Subsequence

use_step_matcher("re")


@given("I have an (?P<array>.+) and a (?P<sequence>.+):")
def step_impl(context, array, sequence):
    context.subsequence = Subsequence(list(map(int, array.split(", "))), list(map(int, sequence.split(", "))))


@when("I validate that the sequence is a subsequence of the array")
def step_impl(context):
    context.subsequence.validate()


@then("I should get (?P<result>.+)")
def step_impl(context, result):
    assert context.subsequence.is_valid == bool(result)
