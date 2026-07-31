class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.55.0/lightdash-cli-1.55.0-macos-arm64.tar.gz"
      sha256 "03cac37b13bec3203b660b5ba2373fdfe93d851675c717e7a5cd46674ca47080"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.55.0/lightdash-cli-1.55.0-macos-x64.tar.gz"
      sha256 "2ce3c40c3f7dbbb98a9c044e150c712f285b3ea383795e4b53ed595149d3d580"
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
