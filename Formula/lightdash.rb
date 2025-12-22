class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.3/lightdash-cli-0.2270.3-macos-arm64.tar.gz"
      sha256 "c15f9d828c7853dc40316532ed2fa6730357f39533e54f48eed2f44282c03724"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.3/lightdash-cli-0.2270.3-macos-x64.tar.gz"
      sha256 "3748c9a4f215bcd478394b51dcccee80a3d982668ffb56be1b3f7c40536f65f8"
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
