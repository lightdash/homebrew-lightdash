class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2803.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2803.2/lightdash-cli-0.2803.2-macos-arm64.tar.gz"
      sha256 "acdbd20f64de179cf39e2cfde44eb1f6f7cc43144990a621ffe0bc82b78df805"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2803.2/lightdash-cli-0.2803.2-macos-x64.tar.gz"
      sha256 "0c40502119b872ba9e5efffb13349a3dafb85765dc5a85c19108be44285887c3"
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
