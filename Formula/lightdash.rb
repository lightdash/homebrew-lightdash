class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3477.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3477.0/lightdash-cli-0.3477.0-macos-arm64.tar.gz"
      sha256 "7e236a30a11005140d61af63a889e0c1ee20c07d31f9a2e0ec4afa3ed39eb624"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3477.0/lightdash-cli-0.3477.0-macos-x64.tar.gz"
      sha256 "968fc7c40250ac5faff95ec81faf65e177693cae00ecc3f6fa6339b07a6b3cee"
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
