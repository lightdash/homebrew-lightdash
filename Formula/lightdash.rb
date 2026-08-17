class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.168.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.168.0/lightdash-cli-1.168.0-macos-arm64.tar.gz"
      sha256 "b7328f13b80c781793aaefcaa578e9d085104ee27e7b0c9e0726cdd6afe890d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.168.0/lightdash-cli-1.168.0-macos-x64.tar.gz"
      sha256 "7d98308ebc958fa60e9d209cf24a1590187b345040d8364e8effecf6a1ac43be"
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
