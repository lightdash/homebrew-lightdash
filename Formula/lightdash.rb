class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2558.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2558.0/lightdash-cli-0.2558.0-macos-arm64.tar.gz"
      sha256 "5871a0786c3f1595722a90551624df1fa207ca6ee249e8918c563517c78a117a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2558.0/lightdash-cli-0.2558.0-macos-x64.tar.gz"
      sha256 "3c12994899b8e8b846da3c4ab2f56d4282c7f25f4b0767e58ef2808a84f77dc9"
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
