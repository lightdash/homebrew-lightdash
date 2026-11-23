class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.371.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.1/lightdash-cli-3.371.1-macos-arm64.tar.gz"
      sha256 "02fae4460334523854ef608e7d8bf221981bfa7b261837d862412c7f79242897"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.1/lightdash-cli-3.371.1-macos-x64.tar.gz"
      sha256 "c8dd57b4097ccd6a505367776f09ab8ea5d6fbe08a36099f8b93918a0b7af079"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.371.1/lightdash-cli-3.371.1-linux-x64.tar.gz"
    sha256 "d74276ac9ed3d4ffa20f295a8fe2a6b919fecb1a8f1dee3d151839f373f46311"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
