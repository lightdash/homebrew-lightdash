class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2682.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2682.2/lightdash-cli-0.2682.2-macos-arm64.tar.gz"
      sha256 "a5b742801aef86c5e3ea0b52129e87fff7aec4361da9add72be6280c6266d074"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2682.2/lightdash-cli-0.2682.2-macos-x64.tar.gz"
      sha256 "64e225067afa4450ffcfd8255a98dbd9cc9e15f9f06ff1d29f4df11eea973f16"
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
