class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.146.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.6/lightdash-cli-1.146.6-macos-arm64.tar.gz"
      sha256 "d0f766e20da25c5a8ce411d6e31968acad73a4c51aaaf33d0c6549494867979e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.6/lightdash-cli-1.146.6-macos-x64.tar.gz"
      sha256 "ee7eff6c246fac81fb738fe84972b944fd667ffd8bab9000b4035c31a855caf7"
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
