class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2308.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2308.0/lightdash-cli-0.2308.0-macos-arm64.tar.gz"
      sha256 "0b555cb75d42cbcb4bdd6f764ecd8557bc41579607ac184cc6bea5c145d489e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2308.0/lightdash-cli-0.2308.0-macos-x64.tar.gz"
      sha256 "29f86d21a632192a64a0ebc7a6024a9f0211b802e469d9150141d1ce912f3c54"
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
