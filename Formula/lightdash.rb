class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2459.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2459.1/lightdash-cli-0.2459.1-macos-arm64.tar.gz"
      sha256 "a955f65ea9b977d947ef19643bed3a4bd82ad356dbc011338bef0e88bee332b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2459.1/lightdash-cli-0.2459.1-macos-x64.tar.gz"
      sha256 "d18f05c0ee5937c18be267ac02aaec48548d068e9eef39148479495f53a842a4"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
