class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2773.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2773.0/lightdash-cli-0.2773.0-macos-arm64.tar.gz"
      sha256 "131e821dc9d497a92e875659aa22923d751ec1796c2ea43e8ca76383b98b624d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2773.0/lightdash-cli-0.2773.0-macos-x64.tar.gz"
      sha256 "17a530211dd1f2226f4c2c38b42720504eff1517f8ef6e22b520310419515684"
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
