class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2723.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2723.0/lightdash-cli-0.2723.0-macos-arm64.tar.gz"
      sha256 "2a92c7ad6419c50509ef3b973af28b413c5939e4a5a06c56ffa2417e4881225b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2723.0/lightdash-cli-0.2723.0-macos-x64.tar.gz"
      sha256 "d7a0c0e1e2a77b9bab28bae637dbfeec2cf0baec367a6868178f1125d7aa20d0"
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
