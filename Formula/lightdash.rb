class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2514.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2514.0/lightdash-cli-0.2514.0-macos-arm64.tar.gz"
      sha256 "32cd06c22108b4e32fd69fe7e8131d40ff4b01fb10f7fa47d24e5f1d2a42ce39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2514.0/lightdash-cli-0.2514.0-macos-x64.tar.gz"
      sha256 "bc9ff9f0aa99935ccb8e3aad36896475d7c14111ebeaea76fe48664d5192d228"
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
