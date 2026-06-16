class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3177.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3177.0/lightdash-cli-0.3177.0-macos-arm64.tar.gz"
      sha256 "964657165bbd2d69ff39c75c10fb85f190f2cebc54da93deac3f00addc679df4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3177.0/lightdash-cli-0.3177.0-macos-x64.tar.gz"
      sha256 "da9d0f66d48503d879a6d49fc35191ceb4f2a133ca6d69b6f6d35b99dd7acc54"
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
