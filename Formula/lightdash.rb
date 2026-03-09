class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2587.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2587.0/lightdash-cli-0.2587.0-macos-arm64.tar.gz"
      sha256 "df9bbf9f42dfd72944cccfc86c3dd3ad04b1afb916d0228a26ee07822a95dc32"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2587.0/lightdash-cli-0.2587.0-macos-x64.tar.gz"
      sha256 "f3cf85bbb3ce5ac56188337d522bc90adec2469c09caaa274447474bdd455313"
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
