class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3376.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3376.0/lightdash-cli-0.3376.0-macos-arm64.tar.gz"
      sha256 "6ce28722b44d144ffd18a3d29704a95f58cede7b08c0d5fac6b8edbd3c960169"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3376.0/lightdash-cli-0.3376.0-macos-x64.tar.gz"
      sha256 "c57a5d7d9998b59e5c2c863c722ee1006151cb8bc96780abafd691a5fe96d49f"
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
