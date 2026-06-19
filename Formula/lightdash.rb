class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3201.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3201.0/lightdash-cli-0.3201.0-macos-arm64.tar.gz"
      sha256 "715d219fbb4e85ebb866e030872726092543254eb3264a2b1a22d6960960c4ac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3201.0/lightdash-cli-0.3201.0-macos-x64.tar.gz"
      sha256 "18d132df7d01429511e7dc42206b519a768b30bf374e1981116c68c34a5b081d"
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
