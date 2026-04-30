class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2849.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2849.2/lightdash-cli-0.2849.2-macos-arm64.tar.gz"
      sha256 "224ce71c39605d7b71084992dffe25fdf495c44c3dd2486105bcd9bf722a446c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2849.2/lightdash-cli-0.2849.2-macos-x64.tar.gz"
      sha256 "2661b8abdec4e72fd364885663af11506e753ca4d31107c2bcce5831f54a69b2"
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
