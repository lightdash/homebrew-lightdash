class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.224.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.224.0/lightdash-cli-1.224.0-macos-arm64.tar.gz"
      sha256 "0e8884f5eddeba59fe26c39330eff785610d012ebc77a7913c40c6f8c14e25b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.224.0/lightdash-cli-1.224.0-macos-x64.tar.gz"
      sha256 "de8b76e2cc47b28f644bb87461b681e9fc51c804e9b3edbca803b3588c6b70c8"
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
