class Prt < Formula
  desc "PRT - Herramienta CLI para manejar pull requests en GitHub"
  homepage "https://github.com/djego/prt"
  url "https://github.com/djego/prt/releases/download/v0.3/prt-v0.3.tar.gz"
  sha256 "36ec53d0945d0ce5ac6f90613297683254ab6181be7913955aae1076b0751eaa"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/prt", "--version"
  end
end
