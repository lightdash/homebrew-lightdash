class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2800.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2800.1/lightdash-cli-0.2800.1-macos-arm64.tar.gz"
      sha256 "6bdd191b676081e8348ad65c7464a8e7b93954ee57178c322b2d727c0785df2e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2800.1/lightdash-cli-0.2800.1-macos-x64.tar.gz"
      sha256 "c412af54582d4648f5de4b4f16cc0887ca2a7c97ddd7932a63f8278d48f9fa21"
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
