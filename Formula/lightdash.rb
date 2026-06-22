class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3208.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3208.0/lightdash-cli-0.3208.0-macos-arm64.tar.gz"
      sha256 "0c43dbc6231e2070575680c1a6fddd7f1f873977703ed3a6bf1095328383f7f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3208.0/lightdash-cli-0.3208.0-macos-x64.tar.gz"
      sha256 "77bc83f3b3cd08cf612c54d4cf564f5a8da3301b2297df037fdf64903e4cb175"
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
