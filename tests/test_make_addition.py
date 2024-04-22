from calculator_api.src.calculator_utils import make_addition


def test_make_addition_good_int() -> None:
    """_summary_"""
    result = make_addition(10, 5)
    assert result == 15


def test_make_addition_good_float() -> None:
    """_summary_"""
    result = make_addition(10, 0.5)
    assert result == 10.1
