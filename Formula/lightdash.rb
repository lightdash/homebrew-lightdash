class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.206.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.5/lightdash-cli-1.206.5-macos-arm64.tar.gz"
      sha256 "46db1ce93c08eee5d993ab3ecfff6246edd45072579283c4dcf0a45518bd3f23"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.5/lightdash-cli-1.206.5-macos-x64.tar.gz"
      sha256 "8e93ce8fe0cea47729f513ca857cc181fae6904c618cef16bdbdbdb2ff2a86c8"
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
