class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2402.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2402.0/lightdash-cli-0.2402.0-macos-arm64.tar.gz"
      sha256 "003ae460f7c6c96b5ede6589eae5541a7f39d64354cbb9c6e81bf8477ac8552d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2402.0/lightdash-cli-0.2402.0-macos-x64.tar.gz"
      sha256 "09e3d03064470256e5972299a4642f124d433335e0f64b8fb8929dba0566f836"
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
