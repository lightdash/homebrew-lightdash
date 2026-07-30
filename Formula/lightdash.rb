class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.46.0/lightdash-cli-1.46.0-macos-arm64.tar.gz"
      sha256 "9081d19dbf94c528ca0b8b4ae42155b41f20299c5c4d1a1e0e5cc9b14ed14a14"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.46.0/lightdash-cli-1.46.0-macos-x64.tar.gz"
      sha256 "a6acf00f68886ef85992c5e2a0e0dbdf55560a775583dd3367567d77dda6cd34"
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
