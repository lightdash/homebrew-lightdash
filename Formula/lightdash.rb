class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3218.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3218.0/lightdash-cli-0.3218.0-macos-arm64.tar.gz"
      sha256 "5d30472f7600156fb90cac38138e80022a907a06ddcea0f14cff960af7ed696d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3218.0/lightdash-cli-0.3218.0-macos-x64.tar.gz"
      sha256 "d9155ac760019323f74d6d5d49559e2d112de63661a081020a62a623dcd7dd62"
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
