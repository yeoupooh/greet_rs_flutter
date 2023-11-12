use std::{
    borrow::Cow,
    ffi::{c_char, CStr, CString},
    thread,
    time::Duration,
};

///
/// # Safety
///
/// The return value should be deallocated after use.
#[no_mangle]
pub unsafe extern "C" fn greet(c_someone: *const c_char) -> *mut c_char {
    let someone = unsafe { CStr::from_ptr(c_someone) }.to_str().unwrap();

    // delay
    thread::sleep(Duration::from_secs(3));

    let output = format!("Hello, {}", someone);
    let c_output = Cow::from(output);

    CString::new(c_output.as_ref()).unwrap().into_raw()
}
