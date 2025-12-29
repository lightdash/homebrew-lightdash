class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2283.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2283.0/lightdash-cli-0.2283.0-macos-arm64.tar.gz"
      sha256 "96b428f1d73ca41adcb29a8ae3cbc5628de23a0e14ae8a975ef887faadc81b6e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2283.0/lightdash-cli-0.2283.0-macos-x64.tar.gz"
      sha256 "2d67245077b24200b98e5690ac28b4fa52ff2a0dd749446266105a016b4b3eb1"
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
