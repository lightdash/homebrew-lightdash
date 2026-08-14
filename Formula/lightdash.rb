class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.156.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.156.0/lightdash-cli-1.156.0-macos-arm64.tar.gz"
      sha256 "fe2e56f9eabcb3bc3f9ad08661fa55accb59ac3a578043636c53bf7fda63d06b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.156.0/lightdash-cli-1.156.0-macos-x64.tar.gz"
      sha256 "b8ffd60442d71c2a99c4a6d0e805e64a6f1ee903f3afb0f6b2b512c528550ef4"
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
