class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3136.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3136.1/lightdash-cli-0.3136.1-macos-arm64.tar.gz"
      sha256 "8edd03ebcbea134340006b2ad3cd171423d1e8bf1eab58341e4afb4006df049a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3136.1/lightdash-cli-0.3136.1-macos-x64.tar.gz"
      sha256 "0212dc43550065928edb3779e49c08822474aab785b21361be87e3d6ddad05c2"
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
