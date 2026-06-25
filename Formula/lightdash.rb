class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3241.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3241.1/lightdash-cli-0.3241.1-macos-arm64.tar.gz"
      sha256 "57b60c95f29b0af7fc897c3e3cda97d312eca574d099bec163603fdc9558be50"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3241.1/lightdash-cli-0.3241.1-macos-x64.tar.gz"
      sha256 "7f01fb0945b07d11f00898119c31ca5bb76e93751ae4632d4c22ef0430c9a3f3"
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
