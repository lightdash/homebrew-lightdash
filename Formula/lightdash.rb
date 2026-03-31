class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2700.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2700.0/lightdash-cli-0.2700.0-macos-arm64.tar.gz"
      sha256 "ee2264ac05fc226f39bc3ff5858a9933c9439ddae966a3ed2bae099a7e60299d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2700.0/lightdash-cli-0.2700.0-macos-x64.tar.gz"
      sha256 "1df4e40ad5d4ce9918082256009475c9d0e6c66311588a3c6e5669d1b4e38e69"
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
