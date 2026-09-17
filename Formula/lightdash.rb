class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.254.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.254.1/lightdash-cli-2.254.1-macos-arm64.tar.gz"
      sha256 "7ece9f3e5395dbc2405d4f40e3a95b3c6c3c7aeadf29fa359b87ad57d3bd1ea8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.254.1/lightdash-cli-2.254.1-macos-x64.tar.gz"
      sha256 "b95e529788c999e1f3c4f19c4efc572975f1795c406469cb835cf09ecbaaa2da"
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
