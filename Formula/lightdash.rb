class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3195.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3195.0/lightdash-cli-0.3195.0-macos-arm64.tar.gz"
      sha256 "75fb453b924d1eb29bd95d5ffcc1bc6dcd8bccbbaa5ebc495a6672640f2416bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3195.0/lightdash-cli-0.3195.0-macos-x64.tar.gz"
      sha256 "df2e3e5e8800f21c83aced19ef0499d311b6acd3dda4f1e070c066b52621ba19"
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
