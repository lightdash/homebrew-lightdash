class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.9/lightdash-cli-3.53.9-macos-arm64.tar.gz"
      sha256 "9eae0028d34f9388ee66f8e3b3e7dab626a3dccce79158c4af5bea89c33d0bb8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.9/lightdash-cli-3.53.9-macos-x64.tar.gz"
      sha256 "e9b3f99c9f77140703822770bd52926c573b82486936fe50f18d06782cfcb9a2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.9/lightdash-cli-3.53.9-linux-x64.tar.gz"
    sha256 "3b5fdd071882e100c6c464384963f89011bfd17c77b2680286f2b648e267fadb"

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
