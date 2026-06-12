class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3156.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3156.1/lightdash-cli-0.3156.1-macos-arm64.tar.gz"
      sha256 "87a792be91c00a6a3e2a393de8e1adba2c0f6e7a6b94c897e3363f0818875b5f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3156.1/lightdash-cli-0.3156.1-macos-x64.tar.gz"
      sha256 "e9d30cd90d304ef7e721e0b2be2d4f5ba83c11ed1069195fe736dee6266a7086"
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
