class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.1.0/lightdash-cli-1.1.0-macos-arm64.tar.gz"
      sha256 "c638317922b28be84ae43d0571d008be791c6753c62e128f41761ddf25005da1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.1.0/lightdash-cli-1.1.0-macos-x64.tar.gz"
      sha256 "158555fc732c084cc077e5468a86580dda12120836f4cb1714b438a108abf9ef"
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
