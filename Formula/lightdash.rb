class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2338.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2338.1/lightdash-cli-0.2338.1-macos-arm64.tar.gz"
      sha256 "85789d7530b7dec2f19adb03a89a5b8883fe6eb5092797a3ffcfc6c16a9134f4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2338.1/lightdash-cli-0.2338.1-macos-x64.tar.gz"
      sha256 "018999e8f887a08c9b54f92505c79c1d13548563b9edf6e57c84d85c1f938217"
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
